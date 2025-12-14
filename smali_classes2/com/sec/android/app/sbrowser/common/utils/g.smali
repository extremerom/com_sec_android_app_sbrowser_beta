.class public final synthetic Lcom/sec/android/app/sbrowser/common/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Message;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public final synthetic f:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->a:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->d:Landroid/os/Message;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->e:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->f:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->f:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->d:Landroid/os/Message;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->a:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/g;->e:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->b(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V

    return-void
.end method
