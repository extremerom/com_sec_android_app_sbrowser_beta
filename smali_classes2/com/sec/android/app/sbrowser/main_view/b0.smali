.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->d:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->e:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->f:Z

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->d:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->a:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->e:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/main_view/b0;->f:Z

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->b(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZZ)V

    return-void
.end method
