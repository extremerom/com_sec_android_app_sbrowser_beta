.class public abstract enum Lorg/jsoup/parser/C;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/C;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/C;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/C;

.field public static final enum AfterBody:Lorg/jsoup/parser/C;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/C;

.field public static final enum AfterHead:Lorg/jsoup/parser/C;

.field public static final enum BeforeHead:Lorg/jsoup/parser/C;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/C;

.field public static final enum ForeignContent:Lorg/jsoup/parser/C;

.field public static final enum InBody:Lorg/jsoup/parser/C;

.field public static final enum InCaption:Lorg/jsoup/parser/C;

.field public static final enum InCell:Lorg/jsoup/parser/C;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/C;

.field public static final enum InFrameset:Lorg/jsoup/parser/C;

.field public static final enum InHead:Lorg/jsoup/parser/C;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/C;

.field public static final enum InRow:Lorg/jsoup/parser/C;

.field public static final enum InSelect:Lorg/jsoup/parser/C;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/C;

.field public static final enum InTable:Lorg/jsoup/parser/C;

.field public static final enum InTableBody:Lorg/jsoup/parser/C;

.field public static final enum InTableText:Lorg/jsoup/parser/C;

.field public static final enum InTemplate:Lorg/jsoup/parser/C;

.field public static final enum Initial:Lorg/jsoup/parser/C;

.field public static final enum Text:Lorg/jsoup/parser/C;

.field private static final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/4 v0, 0x0

    new-instance v1, Lorg/jsoup/parser/m;

    invoke-direct {v1}, Lorg/jsoup/parser/m;-><init>()V

    sput-object v1, Lorg/jsoup/parser/C;->Initial:Lorg/jsoup/parser/C;

    new-instance v2, Lorg/jsoup/parser/t;

    invoke-direct {v2}, Lorg/jsoup/parser/t;-><init>()V

    sput-object v2, Lorg/jsoup/parser/C;->BeforeHtml:Lorg/jsoup/parser/C;

    new-instance v3, Lorg/jsoup/parser/u;

    invoke-direct {v3}, Lorg/jsoup/parser/u;-><init>()V

    sput-object v3, Lorg/jsoup/parser/C;->BeforeHead:Lorg/jsoup/parser/C;

    new-instance v4, Lorg/jsoup/parser/v;

    invoke-direct {v4}, Lorg/jsoup/parser/v;-><init>()V

    sput-object v4, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    new-instance v5, Lorg/jsoup/parser/w;

    invoke-direct {v5}, Lorg/jsoup/parser/w;-><init>()V

    sput-object v5, Lorg/jsoup/parser/C;->InHeadNoscript:Lorg/jsoup/parser/C;

    new-instance v6, Lorg/jsoup/parser/x;

    invoke-direct {v6}, Lorg/jsoup/parser/x;-><init>()V

    sput-object v6, Lorg/jsoup/parser/C;->AfterHead:Lorg/jsoup/parser/C;

    new-instance v7, Lorg/jsoup/parser/y;

    invoke-direct {v7}, Lorg/jsoup/parser/y;-><init>()V

    sput-object v7, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    new-instance v8, Lorg/jsoup/parser/z;

    invoke-direct {v8}, Lorg/jsoup/parser/z;-><init>()V

    sput-object v8, Lorg/jsoup/parser/C;->Text:Lorg/jsoup/parser/C;

    new-instance v9, Lorg/jsoup/parser/A;

    invoke-direct {v9}, Lorg/jsoup/parser/A;-><init>()V

    sput-object v9, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    new-instance v10, Lorg/jsoup/parser/c;

    invoke-direct {v10}, Lorg/jsoup/parser/c;-><init>()V

    sput-object v10, Lorg/jsoup/parser/C;->InTableText:Lorg/jsoup/parser/C;

    new-instance v11, Lorg/jsoup/parser/d;

    invoke-direct {v11}, Lorg/jsoup/parser/d;-><init>()V

    sput-object v11, Lorg/jsoup/parser/C;->InCaption:Lorg/jsoup/parser/C;

    new-instance v12, Lorg/jsoup/parser/e;

    invoke-direct {v12}, Lorg/jsoup/parser/e;-><init>()V

    sput-object v12, Lorg/jsoup/parser/C;->InColumnGroup:Lorg/jsoup/parser/C;

    new-instance v13, Lorg/jsoup/parser/f;

    invoke-direct {v13}, Lorg/jsoup/parser/f;-><init>()V

    sput-object v13, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    new-instance v14, Lorg/jsoup/parser/g;

    invoke-direct {v14}, Lorg/jsoup/parser/g;-><init>()V

    sput-object v14, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    new-instance v15, Lorg/jsoup/parser/h;

    invoke-direct {v15}, Lorg/jsoup/parser/h;-><init>()V

    sput-object v15, Lorg/jsoup/parser/C;->InCell:Lorg/jsoup/parser/C;

    new-instance v16, Lorg/jsoup/parser/i;

    invoke-direct/range {v16 .. v16}, Lorg/jsoup/parser/i;-><init>()V

    sput-object v16, Lorg/jsoup/parser/C;->InSelect:Lorg/jsoup/parser/C;

    new-instance v17, Lorg/jsoup/parser/j;

    invoke-direct/range {v17 .. v17}, Lorg/jsoup/parser/j;-><init>()V

    sput-object v17, Lorg/jsoup/parser/C;->InSelectInTable:Lorg/jsoup/parser/C;

    new-instance v18, Lorg/jsoup/parser/k;

    invoke-direct/range {v18 .. v18}, Lorg/jsoup/parser/k;-><init>()V

    sput-object v18, Lorg/jsoup/parser/C;->InTemplate:Lorg/jsoup/parser/C;

    new-instance v19, Lorg/jsoup/parser/l;

    invoke-direct/range {v19 .. v19}, Lorg/jsoup/parser/l;-><init>()V

    sput-object v19, Lorg/jsoup/parser/C;->AfterBody:Lorg/jsoup/parser/C;

    new-instance v20, Lorg/jsoup/parser/n;

    invoke-direct/range {v20 .. v20}, Lorg/jsoup/parser/n;-><init>()V

    sput-object v20, Lorg/jsoup/parser/C;->InFrameset:Lorg/jsoup/parser/C;

    new-instance v21, Lorg/jsoup/parser/o;

    invoke-direct/range {v21 .. v21}, Lorg/jsoup/parser/o;-><init>()V

    sput-object v21, Lorg/jsoup/parser/C;->AfterFrameset:Lorg/jsoup/parser/C;

    new-instance v22, Lorg/jsoup/parser/p;

    invoke-direct/range {v22 .. v22}, Lorg/jsoup/parser/p;-><init>()V

    sput-object v22, Lorg/jsoup/parser/C;->AfterAfterBody:Lorg/jsoup/parser/C;

    new-instance v23, Lorg/jsoup/parser/q;

    invoke-direct/range {v23 .. v23}, Lorg/jsoup/parser/q;-><init>()V

    sput-object v23, Lorg/jsoup/parser/C;->AfterAfterFrameset:Lorg/jsoup/parser/C;

    new-instance v24, Lorg/jsoup/parser/r;

    invoke-direct/range {v24 .. v24}, Lorg/jsoup/parser/r;-><init>()V

    sput-object v24, Lorg/jsoup/parser/C;->ForeignContent:Lorg/jsoup/parser/C;

    move-object/from16 v25, v15

    const/16 v15, 0x18

    new-array v15, v15, [Lorg/jsoup/parser/C;

    aput-object v1, v15, v0

    const/4 v1, 0x1

    aput-object v2, v15, v1

    const/4 v1, 0x2

    aput-object v3, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    const/16 v1, 0x9

    aput-object v10, v15, v1

    const/16 v1, 0xa

    aput-object v11, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v13, v15, v1

    const/16 v1, 0xd

    aput-object v14, v15, v1

    const/16 v1, 0xe

    aput-object v25, v15, v1

    const/16 v1, 0xf

    aput-object v16, v15, v1

    const/16 v1, 0x10

    aput-object v17, v15, v1

    const/16 v1, 0x11

    aput-object v18, v15, v1

    const/16 v1, 0x12

    aput-object v19, v15, v1

    const/16 v1, 0x13

    aput-object v20, v15, v1

    const/16 v1, 0x14

    aput-object v21, v15, v1

    const/16 v1, 0x15

    aput-object v22, v15, v1

    const/16 v1, 0x16

    aput-object v23, v15, v1

    const/16 v1, 0x17

    aput-object v24, v15, v1

    sput-object v15, Lorg/jsoup/parser/C;->$VALUES:[Lorg/jsoup/parser/C;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/C;->nullString:Ljava/lang/String;

    return-void
.end method

.method public static a(LF3/f;)Z
    .locals 2

    iget-object v0, p0, LF3/f;->b:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/O;

    sget-object v1, Lorg/jsoup/parser/O;->Character:Lorg/jsoup/parser/O;

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/jsoup/parser/H;

    iget-object p0, p0, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    invoke-static {p0}, LPd/b;->d(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lorg/jsoup/parser/M;Lorg/jsoup/parser/b;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/S;

    sget-object v1, Lorg/jsoup/parser/i1;->Rawtext:Lorg/jsoup/parser/i1;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    iget-object v0, p1, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iput-object v0, p1, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    sget-object v0, Lorg/jsoup/parser/C;->Text:Lorg/jsoup/parser/C;

    iput-object v0, p1, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    return-void
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/C;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/C;
    .locals 1

    const-class v0, Lorg/jsoup/parser/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/C;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/C;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/C;->$VALUES:[Lorg/jsoup/parser/C;

    invoke-virtual {v0}, [Lorg/jsoup/parser/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/C;

    return-object v0
.end method


# virtual methods
.method public abstract e(LF3/f;Lorg/jsoup/parser/b;)Z
.end method
