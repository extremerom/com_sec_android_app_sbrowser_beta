.class public final synthetic Lcom/sec/android/app/sbrowser/settings/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/j;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleanDataReady(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->a(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->m(Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/j;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/j;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;Z)V

    return-void
.end method
