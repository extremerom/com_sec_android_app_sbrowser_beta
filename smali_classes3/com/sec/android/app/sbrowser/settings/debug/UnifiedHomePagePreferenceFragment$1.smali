.class Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    sget-object p2, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->VERSION:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/UnifiedHomePagePreferenceFragment;

    const-string p1, "pref_debug_unified_home_page_version"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
