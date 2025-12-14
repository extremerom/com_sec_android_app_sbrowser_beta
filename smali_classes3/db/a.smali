.class public final enum Ldb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ldb/a;

.field public static final enum ERROR:Ldb/a;

.field public static final enum HIDDEN:Ldb/a;

.field public static final enum WARNING:Ldb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ldb/a;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb/a;->WARNING:Ldb/a;

    new-instance v1, Ldb/a;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldb/a;->ERROR:Ldb/a;

    new-instance v2, Ldb/a;

    const-string v3, "HIDDEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ldb/a;->HIDDEN:Ldb/a;

    filled-new-array {v0, v1, v2}, [Ldb/a;

    move-result-object v0

    sput-object v0, Ldb/a;->$VALUES:[Ldb/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ldb/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldb/a;
    .locals 1

    const-class v0, Ldb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldb/a;

    return-object p0
.end method

.method public static values()[Ldb/a;
    .locals 1

    sget-object v0, Ldb/a;->$VALUES:[Ldb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldb/a;

    return-object v0
.end method
