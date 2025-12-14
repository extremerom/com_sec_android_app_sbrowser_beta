.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->b:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->b:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/z;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->h(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
