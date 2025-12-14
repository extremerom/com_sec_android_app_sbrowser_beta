.class public final enum Lcom/samsung/android/vexfwk/VexFwkError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/VexFwkError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/vexfwk/VexFwkError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/VexFwkError;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "UNKNOWN_ERROR",
        "TIME_OUT",
        "DEAD_OBJ",
        "NO_INIT",
        "BAD_VALUE",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
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

.field private static final synthetic $VALUES:[Lcom/samsung/android/vexfwk/VexFwkError;

.field public static final enum BAD_VALUE:Lcom/samsung/android/vexfwk/VexFwkError;

.field public static final Companion:Lcom/samsung/android/vexfwk/VexFwkError$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEAD_OBJ:Lcom/samsung/android/vexfwk/VexFwkError;

.field public static final enum NO_INIT:Lcom/samsung/android/vexfwk/VexFwkError;

.field public static final enum TIME_OUT:Lcom/samsung/android/vexfwk/VexFwkError;

.field public static final enum UNKNOWN_ERROR:Lcom/samsung/android/vexfwk/VexFwkError;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/vexfwk/VexFwkError;
    .locals 5

    sget-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->UNKNOWN_ERROR:Lcom/samsung/android/vexfwk/VexFwkError;

    sget-object v1, Lcom/samsung/android/vexfwk/VexFwkError;->TIME_OUT:Lcom/samsung/android/vexfwk/VexFwkError;

    sget-object v2, Lcom/samsung/android/vexfwk/VexFwkError;->DEAD_OBJ:Lcom/samsung/android/vexfwk/VexFwkError;

    sget-object v3, Lcom/samsung/android/vexfwk/VexFwkError;->NO_INIT:Lcom/samsung/android/vexfwk/VexFwkError;

    sget-object v4, Lcom/samsung/android/vexfwk/VexFwkError;->BAD_VALUE:Lcom/samsung/android/vexfwk/VexFwkError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/vexfwk/VexFwkError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError;

    const/high16 v1, -0x80000000

    const-string v2, "UNKNOWN_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/vexfwk/VexFwkError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->UNKNOWN_ERROR:Lcom/samsung/android/vexfwk/VexFwkError;

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError;

    sget v1, Landroid/system/OsConstants;->ETIMEDOUT:I

    neg-int v1, v1

    const-string v2, "TIME_OUT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/vexfwk/VexFwkError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->TIME_OUT:Lcom/samsung/android/vexfwk/VexFwkError;

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError;

    sget v1, Landroid/system/OsConstants;->EPIPE:I

    neg-int v1, v1

    const-string v2, "DEAD_OBJ"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/vexfwk/VexFwkError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->DEAD_OBJ:Lcom/samsung/android/vexfwk/VexFwkError;

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError;

    sget v1, Landroid/system/OsConstants;->ENODEV:I

    neg-int v1, v1

    const-string v2, "NO_INIT"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/vexfwk/VexFwkError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->NO_INIT:Lcom/samsung/android/vexfwk/VexFwkError;

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError;

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    neg-int v1, v1

    const-string v2, "BAD_VALUE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/vexfwk/VexFwkError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->BAD_VALUE:Lcom/samsung/android/vexfwk/VexFwkError;

    invoke-static {}, Lcom/samsung/android/vexfwk/VexFwkError;->$values()[Lcom/samsung/android/vexfwk/VexFwkError;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->$VALUES:[Lcom/samsung/android/vexfwk/VexFwkError;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/samsung/android/vexfwk/VexFwkError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/VexFwkError$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->Companion:Lcom/samsung/android/vexfwk/VexFwkError$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/vexfwk/VexFwkError;->code:I

    return-void
.end method

.method public static final from(I)Lcom/samsung/android/vexfwk/VexFwkError;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->Companion:Lcom/samsung/android/vexfwk/VexFwkError$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/vexfwk/VexFwkError$Companion;->from(I)Lcom/samsung/android/vexfwk/VexFwkError;

    move-result-object p0

    return-object p0
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

    sget-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/vexfwk/VexFwkError;
    .locals 1

    const-class v0, Lcom/samsung/android/vexfwk/VexFwkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/VexFwkError;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/vexfwk/VexFwkError;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/VexFwkError;->$VALUES:[Lcom/samsung/android/vexfwk/VexFwkError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/vexfwk/VexFwkError;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/VexFwkError;->code:I

    return p0
.end method
