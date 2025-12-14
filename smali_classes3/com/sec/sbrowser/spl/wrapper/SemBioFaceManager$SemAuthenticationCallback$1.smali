.class Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;


# direct methods
.method public constructor <init>(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->getCryptoObject()Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;->this$0:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;)V

    :goto_0
    return-void
.end method
