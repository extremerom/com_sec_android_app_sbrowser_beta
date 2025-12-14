.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:LK9/f;


# direct methods
.method public synthetic constructor <init>(LK9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/B;->a:LK9/f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/B;->a:LK9/f;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->a(LK9/f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
