.class public final Lc7/M0;
.super Lcom/google/crypto/tink/shaded/protobuf/z;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lc7/M0;

.field public static final DEK_TEMPLATE_FIELD_NUMBER:I = 0x2

.field public static final KEK_URI_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Z;"
        }
    .end annotation
.end field


# instance fields
.field private dekTemplate_:Lc7/q0;

.field private kekUri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc7/M0;

    invoke-direct {v0}, Lc7/M0;-><init>()V

    sput-object v0, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    const-class v1, Lc7/M0;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->l(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/z;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc7/M0;->kekUri_:Ljava/lang/String;

    return-void
.end method

.method public static m()Lc7/M0;
    .locals 1

    sget-object v0, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    return-object v0
.end method

.method public static p(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/M0;
    .locals 1

    sget-object v0, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/z;->j(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/M0;

    return-object p0
.end method


# virtual methods
.method public final f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lc7/L0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lc7/M0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

    if-nez p0, :cond_1

    const-class p1, Lc7/M0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lc7/M0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lc7/M0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    return-object p0

    :pswitch_4
    const-string p0, "kekUri_"

    const-string p1, "dekTemplate_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    sget-object v0, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lc7/e;

    sget-object p1, Lc7/M0;->DEFAULT_INSTANCE:Lc7/M0;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/w;-><init>(Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lc7/M0;

    invoke-direct {p0}, Lc7/M0;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Lc7/q0;
    .locals 0

    iget-object p0, p0, Lc7/M0;->dekTemplate_:Lc7/q0;

    if-nez p0, :cond_0

    invoke-static {}, Lc7/q0;->p()Lc7/q0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc7/M0;->kekUri_:Ljava/lang/String;

    return-object p0
.end method
