.class public final enum Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0018B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;",
        "",
        "value",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getValue",
        "()I",
        "getType",
        "()Ljava/lang/String;",
        "DEFAULT",
        "CHILD",
        "MINOR",
        "DISABLED",
        "SPC_MINOR",
        "SPC_ADULT",
        "DW",
        "isChild",
        "",
        "isMinor",
        "isSupported",
        "shouldShowMinorPage",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEFAULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum DISABLED:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum DW:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum SPC_ADULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

.field public static final enum SPC_MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;


# instance fields
.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DEFAULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DISABLED:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_ADULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DW:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "Default"

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DEFAULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "Child"

    const-string v2, "CHILD"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "Minor"

    const-string v2, "MINOR"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "Normal"

    const-string v2, "DISABLED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DISABLED:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "SPC-Minor"

    const-string v2, "SPC_MINOR"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "SPC-Adult"

    const-string v2, "SPC_ADULT"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_ADULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    const-string v1, "DW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DW:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->$values()[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->value:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->type:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Llb/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->value:I

    return p0
.end method

.method public final isChild()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMinor()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSupported()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->isChild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->isMinor()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_ADULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final shouldShowMinorPage()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DW:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
