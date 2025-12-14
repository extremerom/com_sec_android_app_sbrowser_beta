.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnResizedCallback;
.implements Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy$OnActivityLayoutCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

.field public final synthetic b:LH/y;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->b:LH/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLayout(IIIII)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->b:LH/y;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;IIIII)V

    return-void
.end method

.method public onResized(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/a;->b:LH/y;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/CustomTabHeightStrategy;->a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;II)V

    return-void
.end method
