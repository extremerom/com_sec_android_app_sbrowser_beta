.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/o;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
