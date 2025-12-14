.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;
.implements Lw2/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/a;->b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/a;->b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->j(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->h(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/a;->b:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->m(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
