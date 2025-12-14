.class public final enum Ldb/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ldb/k;

.field public static final enum ERROR:Ldb/k;

.field public static final enum WARNING:Ldb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ldb/k;

    const-string v1, "WARNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldb/k;->WARNING:Ldb/k;

    new-instance v1, Ldb/k;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldb/k;->ERROR:Ldb/k;

    filled-new-array {v0, v1}, [Ldb/k;

    move-result-object v0

    sput-object v0, Ldb/k;->$VALUES:[Ldb/k;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ldb/k;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldb/k;
    .locals 1

    const-class v0, Ldb/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldb/k;

    return-object p0
.end method

.method public static values()[Ldb/k;
    .locals 1

    sget-object v0, Ldb/k;->$VALUES:[Ldb/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldb/k;

    return-object v0
.end method
