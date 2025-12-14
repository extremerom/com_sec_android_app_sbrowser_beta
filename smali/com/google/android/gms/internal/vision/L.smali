.class public final Lcom/google/android/gms/internal/vision/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/o0;


# static fields
.field public static final b:Lcom/google/android/gms/internal/vision/L;

.field public static final c:Lcom/google/android/gms/internal/vision/L;

.field public static final d:Lcom/google/android/gms/internal/vision/L;

.field public static final e:Lcom/google/android/gms/internal/vision/L;

.field public static final f:Lcom/google/android/gms/internal/vision/L;

.field public static final g:Lcom/google/android/gms/internal/vision/L;

.field public static final h:Lcom/google/android/gms/internal/vision/L;

.field public static final i:Lcom/google/android/gms/internal/vision/L;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->b:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->c:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->d:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->e:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->f:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->g:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->h:Lcom/google/android/gms/internal/vision/L;

    new-instance v0, Lcom/google/android/gms/internal/vision/L;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/L;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/L;->i:Lcom/google/android/gms/internal/vision/L;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/vision/L;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(I)Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/vision/L;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/N;->a(I)Lcom/google/android/gms/internal/vision/N;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/M;->a(I)Lcom/google/android/gms/internal/vision/M;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/A;->a(I)Lcom/google/android/gms/internal/vision/A;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/v;->a(I)Lcom/google/android/gms/internal/vision/v;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_3
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/u;->a(I)Lcom/google/android/gms/internal/vision/u;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_4
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/t;->a(I)Lcom/google/android/gms/internal/vision/t;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_5
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/q;->a(I)Lcom/google/android/gms/internal/vision/q;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    :pswitch_6
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/o;->a(I)Lcom/google/android/gms/internal/vision/o;

    move-result-object p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_7

    :cond_7
    const/4 p0, 0x0

    :goto_7
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
