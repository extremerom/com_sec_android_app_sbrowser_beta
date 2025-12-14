.class public final LR1/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final b:LR1/c;

.field public static final c:LR1/c;

.field public static final d:LR1/c;

.field public static final e:LR1/c;

.field public static final f:LR1/c;

.field public static final g:LR1/c;

.field public static final h:LR1/c;

.field public static final i:LR1/c;

.field public static final j:LR1/c;

.field public static final k:LR1/c;

.field public static final l:LR1/c;

.field public static final m:LR1/c;

.field public static final n:LR1/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->b:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->c:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->d:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->e:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->f:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->g:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->h:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->i:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->j:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->k:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->l:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->m:LR1/c;

    new-instance v0, LR1/c;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LR1/c;-><init>(II)V

    sput-object v0, LR1/c;->n:LR1/c;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LR1/c;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget p0, p0, LR1/c;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LM1/c;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LM1/c;-><init>(I)V

    return-object p0

    :pswitch_0
    sget-object p0, Lfb/w;->a:Lfb/w;

    return-object p0

    :pswitch_1
    new-instance p0, LM1/b;

    invoke-direct {p0, v1}, LM1/b;-><init>(I)V

    return-object p0

    :pswitch_2
    new-instance p0, LR1/w;

    const/16 v0, 0xe

    invoke-direct {p0, v1, v1, v1, v0}, LR1/w;-><init>(ZZZI)V

    return-object p0

    :pswitch_3
    return-object v0

    :pswitch_4
    new-instance p0, LM1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, LM1/a;

    invoke-direct {p0, v1}, LM1/a;-><init>(I)V

    return-object p0

    :pswitch_6
    sget-object p0, LM1/f;->Phone:LM1/f;

    return-object p0

    :pswitch_7
    int-to-float p0, v1

    new-instance v0, LH0/e;

    invoke-direct {v0, p0}, LH0/e;-><init>(F)V

    new-instance v1, LH0/e;

    invoke-direct {v1, p0}, LH0/e;-><init>(F)V

    new-instance v2, LH0/e;

    invoke-direct {v2, p0}, LH0/e;-><init>(F)V

    new-instance v3, LH0/e;

    invoke-direct {v3, p0}, LH0/e;-><init>(F)V

    filled-new-array {v0, v1, v2, v3}, [LH0/e;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, LR1/v;->c:LR1/v;

    return-object p0

    :pswitch_a
    sget-object p0, LR1/d;->a:La0/L0;

    return-object v0

    :pswitch_b
    int-to-float p0, v1

    invoke-static {p0, p0}, LG5/T2;->b(FF)J

    move-result-wide v0

    new-instance p0, LH0/g;

    invoke-direct {p0, v0, v1}, LH0/g;-><init>(J)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
