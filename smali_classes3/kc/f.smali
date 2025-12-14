.class public final enum Lkc/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lkc/f;

.field public static final enum BOTH:Lkc/f;

.field public static final enum CONFLICTS_ONLY:Lkc/f;

.field public static final enum SUCCESS_ONLY:Lkc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkc/f;

    const-string v1, "CONFLICTS_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkc/f;->CONFLICTS_ONLY:Lkc/f;

    new-instance v1, Lkc/f;

    const-string v2, "SUCCESS_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkc/f;->SUCCESS_ONLY:Lkc/f;

    new-instance v2, Lkc/f;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkc/f;->BOTH:Lkc/f;

    filled-new-array {v0, v1, v2}, [Lkc/f;

    move-result-object v0

    sput-object v0, Lkc/f;->$VALUES:[Lkc/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkc/f;
    .locals 1

    const-class v0, Lkc/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkc/f;

    return-object p0
.end method

.method public static values()[Lkc/f;
    .locals 1

    sget-object v0, Lkc/f;->$VALUES:[Lkc/f;

    invoke-virtual {v0}, [Lkc/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkc/f;

    return-object v0
.end method
