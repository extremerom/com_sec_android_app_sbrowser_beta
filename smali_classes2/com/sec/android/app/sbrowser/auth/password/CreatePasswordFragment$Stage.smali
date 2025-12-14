.class public final enum Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

.field public static final enum Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;


# instance fields
.field private final mAlphaHint:I

.field private final mButtonText:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    sget-object v1, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    sget-object v2, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->ConfirmWrong:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    const v1, 0x7f1406a3

    const v2, 0x7f14069c

    const-string v3, "Introduction"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->Introduction:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x1

    const v3, 0x7f1406a5

    const v4, 0x7f14084e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->NeedToConfirm:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    const/4 v1, 0x2

    const v2, 0x7f1406a4

    const-string v3, "ConfirmWrong"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->ConfirmWrong:Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-static {}, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->$values()[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->$VALUES:[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->mAlphaHint:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->mButtonText:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->mAlphaHint:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->$VALUES:[Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getButtonText()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment$Stage;->mButtonText:I

    return p0
.end method
