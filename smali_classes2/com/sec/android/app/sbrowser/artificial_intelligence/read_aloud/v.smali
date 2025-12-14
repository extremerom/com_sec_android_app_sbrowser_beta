.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 6

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->A(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
