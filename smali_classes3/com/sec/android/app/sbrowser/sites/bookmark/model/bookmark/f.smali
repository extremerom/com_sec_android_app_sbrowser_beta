.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:J

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;Landroid/app/Activity;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->c:Landroid/app/Activity;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->d:J

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->c:Landroid/app/Activity;

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->a:I

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->d:J

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/f;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->a(ILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;Landroid/app/Activity;JZ)V

    return-void
.end method
