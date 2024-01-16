# action_items.py
from flask import Blueprint, request, jsonify

# Create a Blueprint for action items routes
bp = Blueprint("action_items", __name__, url_prefix="/api/action-items")

action_items = [
    {"id": 1, "title": "Task 1", "status": "Pending"},
    {"id": 2, "title": "Task 2", "status": "InProgress"},
    # Add more items...
]


@bp.route('/', methods=['GET'])
def get_action_items():
    page = int(request.args.get('page', 1))
    page_size = 10  # Number of items per page

    start_index = (page - 1) * page_size
    end_index = start_index + page_size
    items_for_page = action_items[start_index:end_index]

    return jsonify(items_for_page)

@bp.route('/rank', methods=['POST'])
def rank_action_items():
    data = request.get_json()
    ranked_items = data.get('ranked_items')

    # Update the rank of each item in the list
    for item in ranked_items:
        item_to_update = next((item for item in action_items if item['id'] == item['id']), None)
        if item_to_update:
            item_to_update['rank'] = item['rank']

    return jsonify({"success": True})


@bp.route('/<int:item_id>', methods=['PUT'])
def update_item_status(item_id):
    data = request.get_json()
    new_status = data.get('status')

    item_to_update = next((item for item in action_items if item['id'] == item_id), None)

    if item_to_update:
        item_to_update['status'] = new_status
        return jsonify({"success": True, "updated_item": item_to_update})
    else:
        return jsonify({"success": False, "message": "Item not found"}), 404
