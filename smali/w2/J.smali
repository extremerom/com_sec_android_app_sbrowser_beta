.class public final Lw2/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# instance fields
.field public final synthetic a:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/J;->a:Landroidx/preference/SeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lw2/J;->a:Landroidx/preference/SeekBarPreference;

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Landroidx/preference/SeekBarPreference;->h:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/preference/SeekBarPreference;->e:Z

    if-nez p2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroidx/preference/SeekBarPreference;->e(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, Lw2/J;->a:Landroidx/preference/SeekBarPreference;

    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lw2/J;->a:Landroidx/preference/SeekBarPreference;

    iput-boolean v0, p0, Landroidx/preference/SeekBarPreference;->e:Z

    invoke-virtual {p1}, Lt/J0;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/preference/SeekBarPreference;->e(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
