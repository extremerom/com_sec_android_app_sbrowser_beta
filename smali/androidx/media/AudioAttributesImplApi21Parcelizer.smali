.class public Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(La3/b;)Landroidx/media/AudioAttributesImplApi21;
    .locals 3

    new-instance v0, Landroidx/media/AudioAttributesImplApi21;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21;-><init>()V

    iget-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, La3/b;->e(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    check-cast v1, La3/c;

    const-class v2, La3/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v1, v1, La3/c;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    :goto_0
    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    iget v1, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, La3/b;->f(II)I

    move-result p0

    iput p0, v0, Landroidx/media/AudioAttributesImplApi21;->b:I

    return-object v0
.end method

.method public static write(Landroidx/media/AudioAttributesImplApi21;La3/b;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media/AudioAttributesImplApi21;->a:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, La3/b;->h(I)V

    move-object v1, p1

    check-cast v1, La3/c;

    iget-object v1, v1, La3/c;->e:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroidx/media/AudioAttributesImplApi21;->b:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, La3/b;->i(II)V

    return-void
.end method
