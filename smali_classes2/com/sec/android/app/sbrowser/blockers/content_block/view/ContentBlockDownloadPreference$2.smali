.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->onCreateView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;->onGoToStore(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
