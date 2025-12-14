.class public abstract Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemAuthenticationCallback"
.end annotation


# instance fields
.field mCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback$1;-><init>(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;)V
.end method
