.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->b:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->c:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->b:Z

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->c:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/o;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->h(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZZI)V

    return-void
.end method
