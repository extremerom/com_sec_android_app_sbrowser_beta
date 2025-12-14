.class public final synthetic Lcom/sec/android/app/sbrowser/settings/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/l;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/l;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/l;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/l;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
