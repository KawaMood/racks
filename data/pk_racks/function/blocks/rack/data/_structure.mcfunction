#> pk_racks:blocks/rack/data/_structure
#
# Rack: entry
#   id: int 
#       ID of the custom block
#   variant: string
#       The variant of the custom block
#   owner: 4-int array
#        The UUID of the owner (optional)
#   location: entry
#       Location of the custom block
#           x: int
#           y: int
#           z: int
#           dimension: string
#   facing: string
#       The cardinal direction the custom block faces
#   wall: boolean
#       Whether the custom block is hanging on a wall or not
#   created_at_gametime: int 
#       The gametime the custom block has been placed on
#   items: 2-entries array
#       Items held by the rack
#           (entry): Item or empty entry
#   pose: short
#       Define the pose of items in the rack