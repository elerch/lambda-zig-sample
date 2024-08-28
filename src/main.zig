const std = @import("std");
const lambda = @import("aws_lambda_runtime");

pub fn main() anyerror!void {
    try lambda.run(null, handler);
}

fn handler(allocator: std.mem.Allocator, event_data: []const u8) ![]const u8 {
    _ = allocator;
    return event_data;
}
