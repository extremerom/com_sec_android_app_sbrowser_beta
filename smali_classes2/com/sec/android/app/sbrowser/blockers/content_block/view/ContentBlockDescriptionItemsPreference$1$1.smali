.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;->onCountsAvailable([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;

.field final synthetic val$resultList:[I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;->val$resultList:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference$1$1;->val$resultList:[I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;->e(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDescriptionItemsPreference;[I)V

    return-void
.end method
