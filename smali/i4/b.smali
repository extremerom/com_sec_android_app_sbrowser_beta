.class public abstract Li4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/d;


# instance fields
.field private final height:I

.field private request:Lh4/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Ll4/l;->j(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Li4/b;->width:I

    iput v0, p0, Li4/b;->height:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRequest()Lh4/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Li4/b;->request:Lh4/c;

    return-object p0
.end method

.method public final getSize(Li4/c;)V
    .locals 1
    .param p1    # Li4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Li4/b;->width:I

    iget p0, p0, Li4/b;->height:I

    check-cast p1, Lh4/j;

    invoke-virtual {p1, v0, p0}, Lh4/j;->m(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public final removeCallback(Li4/c;)V
    .locals 0
    .param p1    # Li4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final setRequest(Lh4/c;)V
    .locals 0
    .param p1    # Lh4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Li4/b;->request:Lh4/c;

    return-void
.end method
