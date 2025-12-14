.class public interface abstract Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;
    }
.end annotation


# virtual methods
.method public abstract execute(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;)V
.end method

.method public abstract getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract precondition(Landroid/app/Activity;)Z
.end method
