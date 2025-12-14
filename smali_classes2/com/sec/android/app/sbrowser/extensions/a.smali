.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lorg/chromium/mojo/system/Core;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;

    invoke-static/range {v1 .. v6}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->d(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$FetchAllFontFiles_Response;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->h(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/a;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/sbrowser/common/stub/StubData;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/a;->d:J

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;->a(JLcom/sec/android/app/sbrowser/common/stub/StubData;Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
