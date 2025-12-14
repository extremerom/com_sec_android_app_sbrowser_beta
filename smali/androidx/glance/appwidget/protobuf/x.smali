.class public final enum Landroidx/glance/appwidget/protobuf/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/protobuf/x;

.field public static final enum BUILD_MESSAGE_INFO:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum GET_DEFAULT_INSTANCE:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum GET_MEMOIZED_IS_INITIALIZED:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum GET_PARSER:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum NEW_MUTABLE_INSTANCE:Landroidx/glance/appwidget/protobuf/x;

.field public static final enum SET_MEMOIZED_IS_INITIALIZED:Landroidx/glance/appwidget/protobuf/x;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/glance/appwidget/protobuf/x;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/glance/appwidget/protobuf/x;->GET_MEMOIZED_IS_INITIALIZED:Landroidx/glance/appwidget/protobuf/x;

    new-instance v1, Landroidx/glance/appwidget/protobuf/x;

    const-string v2, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/glance/appwidget/protobuf/x;->SET_MEMOIZED_IS_INITIALIZED:Landroidx/glance/appwidget/protobuf/x;

    new-instance v2, Landroidx/glance/appwidget/protobuf/x;

    const-string v3, "BUILD_MESSAGE_INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/glance/appwidget/protobuf/x;->BUILD_MESSAGE_INFO:Landroidx/glance/appwidget/protobuf/x;

    new-instance v3, Landroidx/glance/appwidget/protobuf/x;

    const-string v4, "NEW_MUTABLE_INSTANCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/glance/appwidget/protobuf/x;->NEW_MUTABLE_INSTANCE:Landroidx/glance/appwidget/protobuf/x;

    new-instance v4, Landroidx/glance/appwidget/protobuf/x;

    const-string v5, "NEW_BUILDER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    new-instance v5, Landroidx/glance/appwidget/protobuf/x;

    const-string v6, "GET_DEFAULT_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/glance/appwidget/protobuf/x;->GET_DEFAULT_INSTANCE:Landroidx/glance/appwidget/protobuf/x;

    new-instance v6, Landroidx/glance/appwidget/protobuf/x;

    const-string v7, "GET_PARSER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/glance/appwidget/protobuf/x;->GET_PARSER:Landroidx/glance/appwidget/protobuf/x;

    filled-new-array/range {v0 .. v6}, [Landroidx/glance/appwidget/protobuf/x;

    move-result-object v0

    sput-object v0, Landroidx/glance/appwidget/protobuf/x;->$VALUES:[Landroidx/glance/appwidget/protobuf/x;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/protobuf/x;
    .locals 1

    const-class v0, Landroidx/glance/appwidget/protobuf/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/protobuf/x;

    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/protobuf/x;
    .locals 1

    sget-object v0, Landroidx/glance/appwidget/protobuf/x;->$VALUES:[Landroidx/glance/appwidget/protobuf/x;

    invoke-virtual {v0}, [Landroidx/glance/appwidget/protobuf/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/glance/appwidget/protobuf/x;

    return-object v0
.end method
