.class public Lorg/chromium/mojo/system/ResultAnd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMojoResult:I

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    iput-object p2, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMojoResult()I
    .locals 0

    iget p0, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    return-object p0
.end method
