.class public final synthetic Lcom/sec/android/app/sbrowser/promotion/context_analyzer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/a;->a:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;

    return-void
.end method


# virtual methods
.method public final onLoadFinished(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/a;->a:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerImpl;->onDomainUpdated(Ljava/util/HashMap;)V

    return-void
.end method
