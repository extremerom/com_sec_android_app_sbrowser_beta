.class public final enum Landroidx/datastore/preferences/protobuf/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/t;

.field public static final enum MAP:Landroidx/datastore/preferences/protobuf/t;

.field public static final enum PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/t;

.field public static final enum SCALAR:Landroidx/datastore/preferences/protobuf/t;

.field public static final enum VECTOR:Landroidx/datastore/preferences/protobuf/t;


# instance fields
.field private final isList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/datastore/preferences/protobuf/t;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/t;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/t;->SCALAR:Landroidx/datastore/preferences/protobuf/t;

    new-instance v1, Landroidx/datastore/preferences/protobuf/t;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/datastore/preferences/protobuf/t;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/t;->VECTOR:Landroidx/datastore/preferences/protobuf/t;

    new-instance v3, Landroidx/datastore/preferences/protobuf/t;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Landroidx/datastore/preferences/protobuf/t;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/t;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/t;

    new-instance v4, Landroidx/datastore/preferences/protobuf/t;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/t;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/t;->MAP:Landroidx/datastore/preferences/protobuf/t;

    filled-new-array {v0, v1, v3, v4}, [Landroidx/datastore/preferences/protobuf/t;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/t;->$VALUES:[Landroidx/datastore/preferences/protobuf/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Landroidx/datastore/preferences/protobuf/t;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/t;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/t;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/t;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/t;->$VALUES:[Landroidx/datastore/preferences/protobuf/t;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/t;

    return-object v0
.end method
