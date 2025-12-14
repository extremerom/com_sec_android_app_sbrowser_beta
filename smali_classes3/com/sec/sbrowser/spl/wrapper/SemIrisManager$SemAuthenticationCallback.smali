.class public abstract Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemAuthenticationCallback"
.end annotation


# instance fields
.field mCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback$1;-><init>(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;)V

    iput-object v0, p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationResult;)V
.end method
