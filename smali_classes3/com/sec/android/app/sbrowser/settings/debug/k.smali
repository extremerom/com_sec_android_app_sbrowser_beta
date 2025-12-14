.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->a(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->q(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->a(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->a(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
