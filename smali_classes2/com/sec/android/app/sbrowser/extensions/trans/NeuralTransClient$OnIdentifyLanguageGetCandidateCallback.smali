.class public interface abstract Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIdentifyLanguageGetCandidateCallback"
.end annotation


# virtual methods
.method public abstract onFailed()V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
