.class public final enum Landroidx/glance/appwidget/protobuf/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/protobuf/r;

.field public static final enum MAP:Landroidx/glance/appwidget/protobuf/r;

.field public static final enum PACKED_VECTOR:Landroidx/glance/appwidget/protobuf/r;

.field public static final enum SCALAR:Landroidx/glance/appwidget/protobuf/r;

.field public static final enum VECTOR:Landroidx/glance/appwidget/protobuf/r;


# instance fields
.field private final isList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/glance/appwidget/protobuf/r;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/protobuf/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroidx/glance/appwidget/protobuf/r;->SCALAR:Landroidx/glance/appwidget/protobuf/r;

    new-instance v1, Landroidx/glance/appwidget/protobuf/r;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/glance/appwidget/protobuf/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Landroidx/glance/appwidget/protobuf/r;->VECTOR:Landroidx/glance/appwidget/protobuf/r;

    new-instance v3, Landroidx/glance/appwidget/protobuf/r;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Landroidx/glance/appwidget/protobuf/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Landroidx/glance/appwidget/protobuf/r;->PACKED_VECTOR:Landroidx/glance/appwidget/protobuf/r;

    new-instance v4, Landroidx/glance/appwidget/protobuf/r;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Landroidx/glance/appwidget/protobuf/r;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/glance/appwidget/protobuf/r;->MAP:Landroidx/glance/appwidget/protobuf/r;

    filled-new-array {v0, v1, v3, v4}, [Landroidx/glance/appwidget/protobuf/r;

    move-result-object v0

    sput-object v0, Landroidx/glance/appwidget/protobuf/r;->$VALUES:[Landroidx/glance/appwidget/protobuf/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Landroidx/glance/appwidget/protobuf/r;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/protobuf/r;
    .locals 1

    const-class v0, Landroidx/glance/appwidget/protobuf/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/protobuf/r;

    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/protobuf/r;
    .locals 1

    sget-object v0, Landroidx/glance/appwidget/protobuf/r;->$VALUES:[Landroidx/glance/appwidget/protobuf/r;

    invoke-virtual {v0}, [Landroidx/glance/appwidget/protobuf/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/glance/appwidget/protobuf/r;

    return-object v0
.end method
