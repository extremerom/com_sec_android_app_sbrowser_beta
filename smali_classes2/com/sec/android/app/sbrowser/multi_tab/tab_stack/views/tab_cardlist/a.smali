.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;

.field public final synthetic b:F

.field public final synthetic c:Z

.field public final synthetic d:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->b:F

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->c:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->d:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iput p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->d:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->b:F

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->c:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->a:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;->e:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;ILandroid/content/DialogInterface;I)V

    return-void
.end method
