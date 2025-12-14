.class Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->updateWebLoginUsed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

.field final synthetic val$passwordUIView:Lcom/sec/terrace/browser/TerracePasswordUIView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;Lcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;->val$passwordUIView:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public passwordExceptionListAvailable(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;->val$passwordUIView:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->destroy()V

    return-void
.end method

.method public passwordListAvailable(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;->val$passwordUIView:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v2, v1}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->isBiometric()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->b(Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;Z)V

    return-void
.end method
