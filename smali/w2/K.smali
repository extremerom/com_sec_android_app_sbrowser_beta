.class public final Lw2/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;I)V
    .locals 0

    iput p2, p0, Lw2/K;->a:I

    iput-object p1, p0, Lw2/K;->b:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget p1, p0, Lw2/K;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x15

    const/4 v0, 0x1

    iget-object p0, p0, Lw2/K;->b:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eq p1, p2, :cond_3

    const/16 p2, 0x16

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_0
    move p3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return p3

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lw2/K;->b:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    iget-boolean p1, p0, Landroidx/preference/SeekBarPreference;->g:Z

    if-nez p1, :cond_6

    const/16 p1, 0x15

    if-eq p2, p1, :cond_9

    const/16 p1, 0x16

    if-ne p2, p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 p1, 0x17

    if-eq p2, p1, :cond_9

    const/16 p1, 0x42

    if-ne p2, p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->f:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p0, :cond_8

    const-string p0, "SeekBarPreference"

    const-string p1, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p2, p3}, Lt/J0;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
