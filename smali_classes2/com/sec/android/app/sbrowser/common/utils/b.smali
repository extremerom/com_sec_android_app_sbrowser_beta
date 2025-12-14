.class public final synthetic Lcom/sec/android/app/sbrowser/common/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[B

.field public final synthetic f:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;[BLcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->c:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->e:[B

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->f:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->c:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->e:[B

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/utils/b;->f:Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;[BLcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;)V

    return-void
.end method
