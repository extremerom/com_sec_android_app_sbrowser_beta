.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/preference/Preference;

.field public final synthetic c:Lw2/A;


# direct methods
.method public synthetic constructor <init>(Lw2/A;Landroidx/preference/Preference;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->c:Lw2/A;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->b:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->b:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->c:Lw2/A;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/StorageAccessPreferenceFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->b:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/j;->c:Lw2/A;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/PushMessagingDebugFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
