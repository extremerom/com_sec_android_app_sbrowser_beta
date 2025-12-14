.class Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/authfw/pass/sdk/authenticator/IntelligentScanManager$AuthenticationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntelligentScanListener"
.end annotation


# instance fields
.field private final mIris:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;

.field private final mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIris:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;

    iput-object p2, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;

    return-void
.end method

.method private getIrisErrorCode(I)I
    .locals 3

    const/16 p0, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move p0, v0

    goto :goto_0

    :pswitch_1
    move p0, v1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x2

    :goto_0
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/authfw/pass/sdk/util/sdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private getIrisHelpCode(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/16 p0, 0xc

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 p0, 0xb

    goto :goto_0

    :pswitch_8
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HelpCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/authfw/pass/sdk/util/sdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->getIrisErrorCode(I)I

    move-result p0

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;

    invoke-interface {p0}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->getIrisHelpCode(I)I

    move-result p0

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded([B)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IntelligentScanListener;->mIrisAuthenticateListener:Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/authenticator/Iris$IrisAuthenticateListener;->onAuthenticationSucceeded([B)V

    return-void
.end method
