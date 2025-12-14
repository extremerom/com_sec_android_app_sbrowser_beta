.class public final Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;
.super Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HingeSplitType"
.end annotation


# instance fields
.field private final mFallbackSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/extensions/embedding/SplitAttributes$SplitType;)V
    .locals 2
    .param p1    # Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hinge, fallbackType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/extensions/embedding/SplitAttributes$SplitType;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;->mFallbackSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    return-void
.end method


# virtual methods
.method public getFallbackSplitType()Landroidx/window/extensions/embedding/SplitAttributes$SplitType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/extensions/embedding/SplitAttributes$SplitType$HingeSplitType;->mFallbackSplitType:Landroidx/window/extensions/embedding/SplitAttributes$SplitType;

    return-object p0
.end method
