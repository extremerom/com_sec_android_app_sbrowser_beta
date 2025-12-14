.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;->updateDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setBlockedAdsCounts(Landroid/content/Context;[I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;[I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
