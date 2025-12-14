.class public final synthetic Lla/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/d;
.implements LR5/e;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;)V
    .locals 0

    iput-object p1, p0, Lla/a;->a:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lla/a;->a:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->b(Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lla/a;->a:Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;

    check-cast p1, LP6/a;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->a(Lcom/sec/android/app/sbrowser/common/stub/StubUtil$PlayListener;LP6/a;)V

    return-void
.end method
