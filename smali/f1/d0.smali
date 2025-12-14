.class public abstract Lf1/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPATCH_MODE_CONTINUE_ON_SUBTREE:I = 0x1

.field public static final DISPATCH_MODE_STOP:I


# instance fields
.field mDispachedInsets:Landroid/view/WindowInsets;

.field private final mDispatchMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf1/d0;->mDispatchMode:I

    return-void
.end method


# virtual methods
.method public final getDispatchMode()I
    .locals 0

    iget p0, p0, Lf1/d0;->mDispatchMode:I

    return p0
.end method

.method public abstract onEnd(Lf1/l0;)V
.end method

.method public abstract onPrepare(Lf1/l0;)V
.end method

.method public abstract onProgress(Lf1/w0;Ljava/util/List;)Lf1/w0;
.end method

.method public abstract onStart(Lf1/l0;Lf1/c0;)Lf1/c0;
.end method
