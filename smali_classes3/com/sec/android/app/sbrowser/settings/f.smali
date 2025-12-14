.class public final synthetic Lcom/sec/android/app/sbrowser/settings/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/f;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/f;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/f;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->i(Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
