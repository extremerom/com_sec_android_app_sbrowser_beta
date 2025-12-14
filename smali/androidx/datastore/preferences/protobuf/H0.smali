.class public final enum Landroidx/datastore/preferences/protobuf/H0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/H0;

.field public static final enum ASCENDING:Landroidx/datastore/preferences/protobuf/H0;

.field public static final enum DESCENDING:Landroidx/datastore/preferences/protobuf/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/datastore/preferences/protobuf/H0;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/H0;->ASCENDING:Landroidx/datastore/preferences/protobuf/H0;

    new-instance v1, Landroidx/datastore/preferences/protobuf/H0;

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/H0;->DESCENDING:Landroidx/datastore/preferences/protobuf/H0;

    filled-new-array {v0, v1}, [Landroidx/datastore/preferences/protobuf/H0;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/H0;->$VALUES:[Landroidx/datastore/preferences/protobuf/H0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/H0;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/H0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/H0;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/H0;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->$VALUES:[Landroidx/datastore/preferences/protobuf/H0;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/H0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/H0;

    return-object v0
.end method
