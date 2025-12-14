.class public final LS3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LS3/n;

.field public static final c:LS3/n;

.field public static final d:LS3/n;

.field public static final e:LS3/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS3/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LS3/n;-><init>(I)V

    sput-object v0, LS3/n;->b:LS3/n;

    new-instance v0, LS3/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LS3/n;-><init>(I)V

    sput-object v0, LS3/n;->c:LS3/n;

    new-instance v0, LS3/n;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LS3/n;-><init>(I)V

    sput-object v0, LS3/n;->d:LS3/n;

    new-instance v0, LS3/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LS3/n;-><init>(I)V

    sput-object v0, LS3/n;->e:LS3/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LS3/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQ3/a;)Z
    .locals 0

    iget p0, p0, LS3/n;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LQ3/a;->REMOTE:LQ3/a;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    sget-object p0, LQ3/a;->DATA_DISK_CACHE:LQ3/a;

    if-eq p1, p0, :cond_1

    sget-object p0, LQ3/a;->MEMORY_CACHE:LQ3/a;

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
