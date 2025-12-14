.class public abstract Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemAuthenticationCallback"
.end annotation


# instance fields
.field mCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4252

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback$1;-><init>(Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationResult;)V
.end method
