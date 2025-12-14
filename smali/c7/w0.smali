.class public final Lc7/w0;
.super Lcom/google/crypto/tink/shaded/protobuf/z;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lc7/w0;

.field public static final KEY_DATA_FIELD_NUMBER:I = 0x1

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Z;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private keyData_:Lc7/m0;

.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc7/w0;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/z;-><init>()V

    sput-object v0, Lc7/w0;->DEFAULT_INSTANCE:Lc7/w0;

    const-class v1, Lc7/w0;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->l(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-void
.end method

.method public static m(Lc7/w0;Lc7/m0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lc7/w0;->keyData_:Lc7/m0;

    return-void
.end method

.method public static n(Lc7/w0;Lc7/N0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lc7/N0;->getNumber()I

    move-result p1

    iput p1, p0, Lc7/w0;->outputPrefixType_:I

    return-void
.end method

.method public static o(Lc7/w0;Lc7/n0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lc7/n0;->getNumber()I

    move-result p1

    iput p1, p0, Lc7/w0;->status_:I

    return-void
.end method

.method public static p(Lc7/w0;I)V
    .locals 0

    iput p1, p0, Lc7/w0;->keyId_:I

    return-void
.end method

.method public static v()Lc7/v0;
    .locals 1

    sget-object v0, Lc7/w0;->DEFAULT_INSTANCE:Lc7/w0;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->e()Lcom/google/crypto/tink/shaded/protobuf/w;

    move-result-object v0

    check-cast v0, Lc7/v0;

    return-object v0
.end method


# virtual methods
.method public final f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lc7/t0;->a:[I

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
    sget-object p0, Lc7/w0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

    if-nez p0, :cond_1

    const-class p1, Lc7/w0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lc7/w0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lc7/w0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Z;

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
    sget-object p0, Lc7/w0;->DEFAULT_INSTANCE:Lc7/w0;

    return-object p0

    :pswitch_4
    const-string p0, "keyData_"

    const-string p1, "status_"

    const-string v0, "keyId_"

    const-string v1, "outputPrefixType_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object v0, Lc7/w0;->DEFAULT_INSTANCE:Lc7/w0;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/e0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lc7/v0;

    sget-object p1, Lc7/w0;->DEFAULT_INSTANCE:Lc7/w0;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/w;-><init>(Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lc7/w0;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/z;-><init>()V

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

.method public final q()Lc7/m0;
    .locals 0

    iget-object p0, p0, Lc7/w0;->keyData_:Lc7/m0;

    if-nez p0, :cond_0

    invoke-static {}, Lc7/m0;->p()Lc7/m0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lc7/w0;->keyId_:I

    return p0
.end method

.method public final s()Lc7/N0;
    .locals 0

    iget p0, p0, Lc7/w0;->outputPrefixType_:I

    invoke-static {p0}, Lc7/N0;->a(I)Lc7/N0;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lc7/N0;->UNRECOGNIZED:Lc7/N0;

    :cond_0
    return-object p0
.end method

.method public final t()Lc7/n0;
    .locals 1

    iget p0, p0, Lc7/w0;->status_:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lc7/n0;->DESTROYED:Lc7/n0;

    goto :goto_0

    :cond_1
    sget-object p0, Lc7/n0;->DISABLED:Lc7/n0;

    goto :goto_0

    :cond_2
    sget-object p0, Lc7/n0;->ENABLED:Lc7/n0;

    goto :goto_0

    :cond_3
    sget-object p0, Lc7/n0;->UNKNOWN_STATUS:Lc7/n0;

    :goto_0
    if-nez p0, :cond_4

    sget-object p0, Lc7/n0;->UNRECOGNIZED:Lc7/n0;

    :cond_4
    return-object p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lc7/w0;->keyData_:Lc7/m0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
