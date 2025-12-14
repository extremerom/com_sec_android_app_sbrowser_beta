.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \u00da\u00012\u00020\u0001:\u0002\u00da\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\r\u0010 \u001a\u00020\u0015\u00a2\u0006\u0004\u0008 \u0010\u001cJ%\u0010&\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000f\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u0015\u00a2\u0006\u0004\u0008(\u0010\u001cJ\r\u0010)\u001a\u00020\u0015\u00a2\u0006\u0004\u0008)\u0010\u001cJ\r\u0010*\u001a\u00020\u0015\u00a2\u0006\u0004\u0008*\u0010\u001cJ\u000f\u0010+\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008+\u0010\u001cJ\u0017\u0010.\u001a\u00020\u00152\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u000200H\u0016\u00a2\u0006\u0004\u00083\u00102J\u0017\u00105\u001a\u00020\u00152\u0006\u00104\u001a\u000200H\u0016\u00a2\u0006\u0004\u00085\u00106J\r\u00107\u001a\u00020\u0015\u00a2\u0006\u0004\u00087\u0010\u001cJ\u000f\u00108\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u00088\u0010\u001cJ\u000f\u00109\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u00089\u0010\u001cJ\r\u0010:\u001a\u00020\u0015\u00a2\u0006\u0004\u0008:\u0010\u001cJ\u001f\u0010<\u001a\u00020\u00152\u0006\u0010;\u001a\u0002002\u0006\u0010%\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00152\u0006\u0010>\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008A\u0010\u001cJ\u0017\u0010B\u001a\u00020\u00152\u0006\u00104\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008B\u0010/J\r\u0010C\u001a\u00020\u0015\u00a2\u0006\u0004\u0008C\u0010\u001cJ-\u0010L\u001a\u00020\u00152\u0006\u0010E\u001a\u00020D2\u0006\u0010G\u001a\u00020F2\u0006\u0010I\u001a\u00020H2\u0006\u0010K\u001a\u00020J\u00a2\u0006\u0004\u0008L\u0010MJ\r\u0010N\u001a\u00020\u0015\u00a2\u0006\u0004\u0008N\u0010\u001cJ\u0015\u0010P\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u000f\u00a2\u0006\u0004\u0008P\u0010@J\u000f\u0010Q\u001a\u00020\u0015H\u0003\u00a2\u0006\u0004\u0008Q\u0010\u001cJ\u000f\u0010R\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010T\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008T\u0010\u001cJ\u000f\u0010U\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008U\u0010\u001cJ\u000f\u0010V\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008V\u0010\u001cJ\u000f\u0010W\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008W\u00102J\u000f\u0010X\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008X\u0010\u001cJ\u000f\u0010Y\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008Y\u0010\u001cJ\u0017\u0010Z\u001a\u00020\u00152\u0006\u0010;\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008Z\u00106J\u000f\u0010[\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008[\u0010\u001cJ\u000f\u0010\\\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\\\u0010\u001cJ\u0017\u0010^\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008^\u0010@J\u000f\u0010_\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008_\u0010\u001cJ\u000f\u0010`\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008`\u0010\u001cJ\u000f\u0010a\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008a\u0010\u001cJ\u000f\u0010b\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008b\u00102J\u0017\u0010d\u001a\u0002002\u0006\u0010c\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008d\u0010eJ\u000f\u0010f\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008f\u0010\u001cJ\u000f\u0010g\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008g\u0010\u001cJ\u000f\u0010h\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008h\u0010\u001cJ\u0017\u0010i\u001a\u00020\u00152\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008i\u0010/J\u000f\u0010j\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008j\u00102J\u000f\u0010k\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008k\u0010\u001cJ\u001f\u0010l\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020!2\u0006\u0010%\u001a\u00020\u000fH\u0003\u00a2\u0006\u0004\u0008l\u0010mJ\u000f\u0010n\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008n\u00102J\u000f\u0010o\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008o\u00102J\u000f\u0010p\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008p\u00102J\u000f\u0010q\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008q\u0010\u001cJ\u000f\u0010r\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008r\u00102J\u000f\u0010s\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008s\u00102J\u000f\u0010t\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008t\u00102J\u000f\u0010u\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008u\u00102J\u0017\u0010w\u001a\u00020\u00152\u0006\u0010v\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008w\u0010/J\u001f\u0010y\u001a\u00020\u00152\u0006\u0010x\u001a\u00020\u00062\u0006\u0010;\u001a\u000200H\u0002\u00a2\u0006\u0004\u0008y\u0010zJ\u0019\u0010\u007f\u001a\u0004\u0018\u00010\u00132\u0006\u0010|\u001a\u00020{H\u0002\u00a2\u0006\u0004\u0008}\u0010~J\u0012\u0010\u0080\u0001\u001a\u00020\u0013H\u0002\u00a2\u0006\u0006\u0008\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\u0015H\u0002\u00a2\u0006\u0005\u0008\u0082\u0001\u0010\u001cR\u0015\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u0083\u0001R\u0015\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0005\u0010\u0084\u0001R\u0015\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0007\u0010\u0085\u0001R\u0015\u0010\u0008\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0008\u0010\u0085\u0001R\u0015\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\n\u0010\u0086\u0001R*\u0010\u0088\u0001\u001a\u00030\u0087\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0017\u0010I\u001a\u00020H8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008I\u0010\u008e\u0001R\u0017\u0010K\u001a\u00020J8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008K\u0010\u008f\u0001R\u0017\u0010G\u001a\u00020F8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008G\u0010\u0090\u0001R\u0017\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008E\u0010\u0091\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0094\u0001R\u0017\u0010\u0096\u0001\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0085\u0001R\u0019\u0010\u0097\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0085\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u001c\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009d\u0001R\u001a\u0010\u00a0\u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u001a\u0010\u00a2\u0001\u001a\u00030\u009b\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u009d\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u0085\u0001R\'\u0010\u00a4\u0001\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\u001a\u0005\u0008\u00a4\u0001\u0010\u0011\"\u0005\u0008\u00a6\u0001\u0010@R\u0018\u0010\u00a8\u0001\u001a\u00030\u00a7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u0018\u0010\u00aa\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u009a\u0001R\u001a\u0010\u00ac\u0001\u001a\u00030\u00ab\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u001a\u0010\u00af\u0001\u001a\u00030\u00ae\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u001a\u0010\u00b2\u0001\u001a\u00030\u00b1\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001a\u0010\u00b4\u0001\u001a\u00030\u00b1\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b3\u0001R\u001a\u0010\u00b5\u0001\u001a\u00030\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u009a\u0001R\u001a\u0010\u00b6\u0001\u001a\u00030\u0098\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u009a\u0001R\u0018\u0010\u00b7\u0001\u001a\u00030\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00ad\u0001R\u0018\u0010\u00b8\u0001\u001a\u00030\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00ad\u0001R\u0019\u0010\u00b9\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u0017\u0010\u00bb\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u0086\u0001R\u0019\u0010\u00bc\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00a5\u0001R\u0019\u0010\u00bd\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00a5\u0001R\u0019\u0010\u00be\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00a5\u0001R\u001a\u0010\u00c0\u0001\u001a\u00030\u00bf\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u0019\u0010\u00c2\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00a5\u0001R\u0017\u0010\u00c3\u0001\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c3\u0001\u0010\u00ba\u0001R\u0019\u0010\u00c4\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u00a5\u0001R\u001a\u0010\u00c6\u0001\u001a\u00030\u00c5\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u0019\u0010\u00c8\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00c1\u0001R\u0019\u0010\u00c9\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00c1\u0001R\u0019\u0010\u00ca\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00ba\u0001R\u0018\u0010\u00cb\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u009d\u0001R\u0018\u0010\u00cd\u0001\u001a\u00030\u00cc\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001R\u0018\u0010\u00d0\u0001\u001a\u00030\u00cf\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R\'\u0010\u00d2\u0001\u001a\u00020,8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00d2\u0001\u0010\u00ba\u0001\u001a\u0005\u0008\u00d3\u0001\u0010S\"\u0005\u0008\u00d4\u0001\u0010/R\'\u0010\u00d5\u0001\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u00d5\u0001\u0010\u00c1\u0001\u001a\u0005\u0008\u00d6\u0001\u00102\"\u0005\u0008\u00d7\u0001\u00106R\u0019\u0010\u00d8\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u00a5\u0001R\u0019\u0010\u00d9\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00ba\u0001\u00a8\u0006\u00db\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISplitViewManager;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "aiViewController",
        "Landroid/view/View;",
        "contentView",
        "parentView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;",
        "aiDelegate",
        "<init>",
        "(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V",
        "getSplitViewContainer",
        "()Landroid/view/View;",
        "",
        "isShowing",
        "()Z",
        "",
        "",
        "suggestions",
        "Ldb/r;",
        "updateSummarySearchSuggestionList",
        "(Ljava/util/List;)V",
        "keyword",
        "searchKeyword",
        "(Ljava/lang/String;)V",
        "updateMenuContainerPadding",
        "()V",
        "shouldShowSplitView",
        "(Landroid/app/Activity;)Z",
        "isFloatingPaneModeBottom",
        "initViewsForSplitView",
        "Landroid/content/res/Configuration;",
        "config",
        "Landroid/widget/RelativeLayout$LayoutParams;",
        "innerLayoutParams",
        "shouldUpdateSplitViewSize",
        "updateSplitViewLayout",
        "(Landroid/content/res/Configuration;Landroid/widget/RelativeLayout$LayoutParams;Z)V",
        "openSplitView",
        "updateViewsForReaderModeTheme",
        "restoreTranslationY",
        "updateSplitViewContainerInitialY",
        "",
        "dy",
        "onTouchMoveWindowHandler",
        "(F)V",
        "",
        "getDefaultWidthForSplitView",
        "()I",
        "getSplitOverMaximumHeight",
        "height",
        "updateSplitOverHeight",
        "(I)V",
        "updateSplitViewWithBlurLayoutMargin",
        "initializeTouchPositionValue",
        "performActionUpAndCancelForSplitView",
        "updateSplitOverHeightIfNecessary",
        "width",
        "updateMainViewSplitSize",
        "(IZ)V",
        "isAnimationNeeded",
        "closeSplitView",
        "(Z)V",
        "onCloseButtonClick",
        "updateSavedRatioOfSplitOverViewHeight",
        "restoreSplitOverToDefaultHeight",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "aiViewWindowHandler",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "aiViewAnimator",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;",
        "summaryTranslator",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;",
        "summaryCopier",
        "setSubModules",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;)V",
        "setFocusToSummaryTitle",
        "enabled",
        "enableMinimizedModeButtons",
        "setLandscapeWindowListeners",
        "getSplitViewWidthMinRatio",
        "()F",
        "setLayoutChangedListenersForSplitView",
        "getViews",
        "updateSummaryPanelMarginsForOneUi7OrAboveStyle",
        "getSummaryPanelHorizontalMarginResultView",
        "updateSplitViewMarginForSummaryIcon",
        "updateSplitViewWidth",
        "setSplitViewWidth",
        "updateSplitViewMarginForBottomButtons",
        "enableMinimizedModeActionButtons",
        "visibility",
        "updateSplitViewWebPageBlurViewVisibility",
        "dismissViewAndCallbacks",
        "setFloatingPaneView",
        "initResultViewBlurView",
        "getContentHeightToAutoResize",
        "color",
        "getColor",
        "(I)I",
        "updateFloatingMinimizedViewColors",
        "showSplitOverViewWithAnimation",
        "showSplitViewWithAnimation",
        "updateSplitOverHeightByDy",
        "getSavedWidthForSplitView",
        "updateSplitViewHeightForSplitOver",
        "makeSplitView",
        "(Landroid/content/res/Configuration;Z)V",
        "getSavedOrDefaultHeightForSplitOver",
        "getSavedHeightForSplitOver",
        "getDefaultHeightForSplitOver",
        "saveCurrentRatioOfSplitOverViewHeight",
        "getSplitViewTopMargin",
        "getSplitViewContainerBottomMargin",
        "getSplitOverMinimumResizeHeight",
        "getErrorViewHeight",
        "dx",
        "updateSplitView",
        "view",
        "setViewWidth",
        "(Landroid/view/View;I)V",
        "Lw6/b;",
        "paneMode",
        "getPanelPosition-J5JjPLc",
        "(I)Ljava/lang/String;",
        "getPanelPosition",
        "getScreenID",
        "()Ljava/lang/String;",
        "setScrollViewPaddingForSplitView",
        "Landroid/app/Activity;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;",
        "Landroid/view/View;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;",
        "splitView",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;",
        "getSplitView",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;",
        "setSplitView",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "Landroid/view/ViewStub;",
        "splitViewStub",
        "Landroid/view/ViewStub;",
        "splitViewStubV2",
        "splitOverViewDivider",
        "splitViewDivider",
        "Landroid/widget/RelativeLayout;",
        "splitViewWithBlurLayout",
        "Landroid/widget/RelativeLayout;",
        "Landroid/widget/LinearLayout;",
        "splitViewContainer",
        "Landroid/widget/LinearLayout;",
        "splitViewMinimizeContainer",
        "Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;",
        "resultView",
        "Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;",
        "resultViewContentLayout",
        "splitViewWebPageBlurView",
        "isOnTouchInvokedKeyboardHide",
        "Z",
        "setOnTouchInvokedKeyboardHide",
        "Landroid/widget/ScrollView;",
        "scrollView",
        "Landroid/widget/ScrollView;",
        "portraitWindowHandler",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "popupMenuContainer",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/widget/TextView;",
        "summaryTitleView",
        "Landroid/widget/TextView;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "splitLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "resultViewContentLayoutChangeListener",
        "landscapeWindowHandler",
        "innerLayout",
        "titleLayout",
        "translatorLanguageContainer",
        "savedRatioOfSplitOverViewHeight",
        "F",
        "mAIDelegate",
        "isResultViewVisible",
        "isPaneInitialized",
        "isAnimationOngoing",
        "Lw6/c;",
        "currentResultViewState",
        "I",
        "isMoved",
        "splitViewMinimumWidth",
        "actionButtonVisibility",
        "Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;",
        "onKeyboardEventListener",
        "Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;",
        "splitViewWidth",
        "splitViewHeight",
        "savedRatioOfSplitViewWidth",
        "bodyContainer",
        "Lw6/s;",
        "resultPaneCallback",
        "Lw6/s;",
        "Lw6/r;",
        "resultPaneAnimationCallback",
        "Lw6/r;",
        "splitViewContainerInitialY",
        "getSplitViewContainerInitialY",
        "setSplitViewContainerInitialY",
        "splitOverUpdatedHeightForDrag",
        "getSplitOverUpdatedHeightForDrag",
        "setSplitOverUpdatedHeightForDrag",
        "isSplitOverTranslationOnGoing",
        "splitViewContainerUpdatedDy",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private actionButtonVisibility:Z

.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final aiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

.field private final aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

.field private final bodyContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentResultViewState:I

.field private innerLayout:Landroid/widget/RelativeLayout;

.field private isAnimationOngoing:Z

.field private isMoved:Z

.field private isOnTouchInvokedKeyboardHide:Z

.field private isPaneInitialized:Z

.field private isResultViewVisible:Z

.field private isSplitOverTranslationOnGoing:Z

.field private landscapeWindowHandler:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onKeyboardEventListener:Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

.field private final parentView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final portraitWindowHandler:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resultPaneAnimationCallback:Lw6/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resultPaneCallback:Lw6/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

.field private resultViewContentLayout:Landroid/widget/LinearLayout;

.field private resultViewContentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private savedRatioOfSplitOverViewHeight:F

.field private savedRatioOfSplitViewWidth:F

.field private final scrollView:Landroid/widget/ScrollView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private splitLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private splitOverUpdatedHeightForDrag:I

.field private final splitOverViewDivider:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public splitView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

.field private splitViewContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitViewContainerInitialY:F

.field private splitViewContainerUpdatedDy:F

.field private splitViewDivider:Landroid/view/View;

.field private splitViewHeight:I

.field private splitViewMinimizeContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final splitViewMinimumWidth:F

.field private splitViewStub:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitViewStubV2:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitViewWebPageBlurView:Landroid/view/View;

.field private splitViewWidth:I

.field private splitViewWithBlurLayout:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private summaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;

.field private summaryTitleView:Landroid/widget/TextView;

.field private summaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;

.field private final titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final translatorLanguageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;Landroid/view/View;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiViewController"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiDelegate"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const p2, 0x7f0b0c17

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p4, "findViewById(...)"

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverViewDivider:Landroid/view/View;

    const p2, 0x7f0b00c0

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    const p2, 0x7f0b08d2

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->portraitWindowHandler:Landroid/widget/RelativeLayout;

    const p2, 0x7f0b0662

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->landscapeWindowHandler:Landroid/widget/RelativeLayout;

    const p2, 0x7f0b0c1c

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0b0c20

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->translatorLanguageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitOverViewHeight:F

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const/4 p5, 0x1

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->currentResultViewState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p5, 0x7f070088

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimumWidth:F

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitViewWidth:F

    const p1, 0x7f0b00c5

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneCallback$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultPaneCallback:Lw6/s;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$resultPaneAnimationCallback$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultPaneAnimationCallback:Lw6/r;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverUpdatedHeightForDrag:I

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissViewAndCallbacks(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->dismissViewAndCallbacks()V

    return-void
.end method

.method public static final synthetic access$enableMinimizedModeActionButtons(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->enableMinimizedModeActionButtons()V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getAiDelegate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-object p0
.end method

.method public static final synthetic access$getAiViewAnimator$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    return-object p0
.end method

.method public static final synthetic access$getAiViewController$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    return-object p0
.end method

.method public static final synthetic access$getBodyContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->bodyContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getContentHeightToAutoResize(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getContentHeightToAutoResize()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getContentView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMAIDelegate$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-object p0
.end method

.method public static final synthetic access$getPanelPosition-J5JjPLc(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getPanelPosition-J5JjPLc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResultView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    return-object p0
.end method

.method public static final synthetic access$getScreenID(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSplitViewContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getSplitViewHeight$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    return p0
.end method

.method public static final synthetic access$getSplitViewMinimizeContainer$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getSplitViewWebPageBlurView$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$isMoved$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isMoved:Z

    return p0
.end method

.method public static final synthetic access$setAnimationOngoing$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isAnimationOngoing:Z

    return-void
.end method

.method public static final synthetic access$setCurrentResultViewState$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->currentResultViewState:I

    return-void
.end method

.method public static final synthetic access$setMoved$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isMoved:Z

    return-void
.end method

.method public static final synthetic access$updateSplitViewWebPageBlurViewVisibility(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWebPageBlurViewVisibility(Z)V

    return-void
.end method

.method public static final synthetic access$updateSummaryPanelMarginsForOneUi7OrAboveStyle(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSummaryPanelMarginsForOneUi7OrAboveStyle()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setFloatingPaneView$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLayoutChangedListenersForSplitView$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$11(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final dismissViewAndCallbacks()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const-string v1, "resultView"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v3, "removeAllCallback"

    invoke-static {v0, v3}, Lv6/a;->c(Lw6/a;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lw6/q;->p:LA6/a;

    invoke-virtual {v3}, LA6/a;->clear()V

    sget-object v3, Ldb/r;->a:Ldb/r;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "Floating not added yet"

    invoke-static {v0, v3}, Lv6/a;->d(Lw6/a;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->dismissSummarizedView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->setPaneMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isPaneInitialized:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultViewContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultViewContentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWebPageBlurViewVisibility(Z)V

    return-void

    :cond_2
    const-string p0, "resultViewContentLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "resultViewContentLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$15(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    return-void
.end method

.method private final enableMinimizedModeActionButtons()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->actionButtonVisibility:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const v3, 0x7f0b0c0d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lw6/b;->a(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const p0, 0x7f0b0612

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0b0c19

    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightIfNecessary$lambda$24(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$14(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V

    return-void
.end method

.method private final getColor(I)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method private final getContentHeightToAutoResize()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07141d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private final getDefaultHeightForSplitOver()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x3ed70a3d    # 0.42f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x3f333333    # 0.7f

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private final getErrorViewHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final getPanelPosition-J5JjPLc(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lw6/b;->a(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "bottom"

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p1, p0}, Lw6/b;->a(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "floating"

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p1, p0}, Lw6/b;->a(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "side"

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getSavedHeightForSplitOver()I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitOverViewHeight:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getSavedOrDefaultHeightForSplitOver()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitOverViewHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getDefaultHeightForSplitOver()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSavedHeightForSplitOver()I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getSavedWidthForSplitView()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitViewWidth:F

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private final getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "1000"

    return-object p0
.end method

.method private final getSplitOverMinimumResizeHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isOneUi7StyleErrorViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getErrorViewHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getSummaryViewHeight()I

    move-result p0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private final getSplitViewContainerBottomMargin()I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getBottomBarHeightBasedOnConfiguration()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isLocationBarEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getToolbarHeight()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getBottomControlOffset()I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method private final getSplitViewTopMargin()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getToolbarHeight()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getToolbarOffset()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private final getSplitViewWidthMinRatio()F
    .locals 0

    const p0, 0x3e99999a    # 0.3f

    return p0
.end method

.method private final getSummaryPanelHorizontalMarginResultView()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v1, 0x0

    const-string v2, "resultView"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lw6/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f071422

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lw6/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07141c

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07141b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071418

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    div-int/2addr v0, v3

    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_3

    int-to-float p0, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v0

    int-to-float v0, v3

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_3
    const v0, 0x7f07141a

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final getViews()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    const v1, 0x7f0b0bcc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    const v1, 0x7f0b0bcd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStubV2:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v1, 0x7f0b0c18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v1, 0x7f0b0c09

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v1, 0x7f0b0c1b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->innerLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setFloatingPaneView$lambda$8(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$12(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V

    return-void
.end method

.method private final initResultViewBlurView()V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "splitViewWebPageBlurView"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiLowRegular(Landroid/content/Context;Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    if-eqz v3, :cond_2

    const/16 v6, 0x8

    const v7, 0x7f06005d

    const/4 v4, 0x1

    const/16 v5, 0xfa

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLandscapeWindowListeners$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->makeSplitView$lambda$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLayoutChangedListenersForSplitView$lambda$4(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic m(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$9(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final makeSplitView(Landroid/content/res/Configuration;Z)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->landscapeWindowHandler:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->portraitWindowHandler:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverViewDivider:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewDivider:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v1, :cond_15

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v1

    const-string v2, "aiViewWindowHandler"

    if-nez v1, :cond_9

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getWindowHandlerTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_8
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_d

    iput v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    const-string v5, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xa

    const/16 v8, 0x15

    const/4 v9, -0x1

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWidth()V

    iget v10, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewHeightForSplitOver()V

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_6
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v5, p1, :cond_c

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    goto :goto_7

    :cond_c
    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->setCurrentTabVideoAssistantActivated(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v5, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_10

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_e
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_8

    :cond_f
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_10
    :goto_8
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setOnTouchInvokedKeyboardHide(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p2

    invoke-static {p2, v6}, Lw6/b;->a(II)Z

    move-result v6

    goto :goto_9

    :cond_11
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_12
    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    move v6, v3

    :goto_9
    invoke-interface {p1, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateSplitOverViewStatus(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getSummarizeBodySentenceView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f071417

    goto :goto_a

    :cond_14
    const v0, 0x7f071416

    :goto_a
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSummaryPanelMarginsForOneUi7OrAboveStyle()V

    return-void

    :cond_15
    const-string p0, "splitViewDivider"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method

.method private static final makeSplitView$lambda$20(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLandscapeWindowListeners$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->openSplitView$lambda$13(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V

    return-void
.end method

.method private static final openSplitView$lambda$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final openSplitView$lambda$11(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final openSplitView$lambda$12(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->onCloseButtonClick()V

    return-void
.end method

.method private static final openSplitView$lambda$13(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->onInfoDetailClick(Landroid/view/View;)V

    return-void
.end method

.method private static final openSplitView$lambda$14(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onSummaryStyleButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private static final openSplitView$lambda$15(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    const-string v1, "summaryTitleView"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private static final openSplitView$lambda$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin$lambda$23(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    return-void
.end method

.method private final saveCurrentRatioOfSplitOverViewHeight()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitOverViewHeight:F

    return-void
.end method

.method private final setFloatingPaneView()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const-string v1, "resultView"

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->i(ILjava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_b

    const v4, 0x7f0b0a00

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultViewContentLayout:Landroid/widget/LinearLayout;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_0

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "get(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->setBlurMode(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Set blur effect mode failed: "

    const-string v5, "SplitViewManager"

    invoke-static {v4, v0, v5}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$setFloatingPaneView$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultPaneCallback:Lw6/s;

    invoke-virtual {v0, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->a(Lw6/s;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultPaneAnimationCallback:Lw6/r;

    invoke-virtual {v0, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->j(Lw6/r;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultPaneAnimationCallback:Lw6/r;

    invoke-virtual {v0, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->h(Lw6/r;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultViewContentLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultViewContentLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v0

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->c:Lw6/q;

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lw6/q;->g(I)Ly6/b;

    move-result-object v1

    goto :goto_3

    :cond_2
    move-object v1, v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setUntouchableAreaInset inset=(0, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", 0, 0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lv6/a;->c(Lw6/a;Ljava/lang/String;)V

    instance-of v4, v1, Ly6/c;

    if-eqz v4, :cond_3

    move-object v2, v1

    check-cast v2, Ly6/c;

    :cond_3
    if-eqz v2, :cond_4

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p0, v2, Ly6/c;->y:Landroid/graphics/Rect;

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to setUntouchableAreaInset, FloatingMode is not exist("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lv6/a;->d(Lw6/a;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_5
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "resultViewContentLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private static final setFloatingPaneView$lambda$7(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isAnimationOngoing:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isPaneInitialized:Z

    if-eqz v0, :cond_0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    if-eq p3, p7, :cond_6

    :cond_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isResultViewVisible:Z

    const/4 p3, 0x0

    const/4 p4, 0x2

    const-string p5, "resultView"

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p2

    invoke-static {p2, p4}, Lw6/b;->a(II)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p5}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isPaneInitialized:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->enableButtonsIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->translatorLanguageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->translatorLanguageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p1

    invoke-static {p1, p4}, Lw6/b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->currentResultViewState:I

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lw6/c;->a(II)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWebPageBlurViewVisibility(Z)V

    goto :goto_1

    :cond_4
    invoke-static {p5}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_5
    const-string p0, "summaryTitleView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p3

    :cond_6
    :goto_1
    return-void
.end method

.method private static final setFloatingPaneView$lambda$8(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->k(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isResultViewVisible:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    return-void

    :cond_0
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setLandscapeWindowListeners()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->landscapeWindowHandler:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->landscapeWindowHandler:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setLandscapeWindowListeners$lambda$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final setLandscapeWindowListeners$lambda$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    const-string v0, "aiViewWindowHandler"

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isWindowHandlerDragEnabled()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isBodyContainerTransitionOngoing()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->isDragRestoreAnimationOngoing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v3, "splitViewWebPageBlurView"

    const/4 v4, 0x2

    if-eqz p1, :cond_f

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    if-eq p1, v6, :cond_8

    if-eq p1, v4, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getInitialRawX()F

    move-result p1

    cmpg-float p1, p1, v7

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getInitialRawX()F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    int-to-float v0, v5

    mul-float/2addr p1, v0

    float-to-int v0, p1

    if-lez v0, :cond_5

    float-to-double v0, p1

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewWidthMinRatio()F

    move-result v3

    mul-float/2addr p2, v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi7Style()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimumWidth:F

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitView(F)V

    goto/16 :goto_3

    :cond_5
    float-to-double v0, p1

    neg-double v0, v0

    int-to-float p1, p2

    const p2, 0x3f147ae1    # 0.58f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-float p1, p1

    neg-float p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitView(F)V

    goto/16 :goto_3

    :cond_6
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getInitialRawX()F

    move-result p1

    cmpg-float p1, p1, v7

    if-nez p1, :cond_9

    return v2

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_2

    :cond_a
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitViewWidth(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->restoreMenuContainer()V

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_d

    invoke-interface {p1, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setInitialRawX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    if-eqz p0, :cond_c

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->didRemoveObjectCaptureView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->didRemoveVisionTextView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setInitialRawX(F)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p1

    invoke-static {p1, v4}, Lw6/b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_10
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_11
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_3
    return v2

    :cond_13
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_14
    const-string p0, "aiViewAnimator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_4
    return v2

    :cond_16
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setLayoutChangedListenersForSplitView()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    const-string p0, "popupMenuContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setLayoutChangedListenersForSplitView$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainerInitialY()F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    const/4 p4, 0x0

    const-string p5, "aiViewWindowHandler"

    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeight(I)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setMinimized(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p5}, Ltb/k;->l(Ljava/lang/String;)V

    throw p4

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {p3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    invoke-static {p5}, Ltb/k;->l(Ljava/lang/String;)V

    throw p4

    :cond_4
    :goto_1
    return-void
.end method

.method private static final setLayoutChangedListenersForSplitView$lambda$4(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    const/4 p2, 0x0

    const-string p3, "aiViewWindowHandler"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getInitialRawX()F

    move-result p1

    const/high16 p4, -0x40800000    # -1.0f

    cmpg-float p1, p1, p4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->getInitialRawY()F

    move-result p1

    cmpg-float p1, p1, p4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightIfNecessary()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->hideMenuContainerIfNecessary()V

    return-void

    :cond_0
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void

    :cond_2
    invoke-static {p3}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method private final setScrollViewPaddingForSplitView()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->setScrollViewPadding()V

    return-void
.end method

.method private final setSplitViewWidth(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitViewWidth:F

    return-void
.end method

.method private final setViewWidth(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final showSplitOverViewWithAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getDefaultHeightForSplitOver()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->showSplitOverViewWithAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "aiViewAnimator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final showSplitViewWithAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getDefaultWidthForSplitView()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->showSplitViewAnimation(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p0, "aiViewAnimator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private final updateFloatingMinimizedViewColors()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v1, 0x7f0b0c10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f060c22

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getColor(I)I

    move-result v1

    const v2, 0x7f060c26

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getColor(I)I

    move-result v2

    const v3, 0x7f06005a

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getColor(I)I

    move-result v3

    const v4, 0x7f0608f3

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getColor(I)I

    move-result p0

    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result v1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeTextColor()I

    move-result v2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSummaryCloseIconColor()I

    move-result v3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeSummaryCloseIconColor()I

    move-result p0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f0b0c1b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0b0612

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v1, 0x7f0b0c19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v1, 0x7f0b0c0d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method

.method private final updateSplitOverHeightByDy(F)V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    float-to-int p1, p1

    sub-int/2addr v0, p1

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverUpdatedHeightForDrag:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverUpdatedHeightForDrag:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setViewHeight(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setViewHeight(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private static final updateSplitOverHeightIfNecessary$lambda$24(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeight(I)V

    return-void
.end method

.method private final updateSplitView(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWidth:I

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setViewWidth(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setViewWidth(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateMainViewSplitSize(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->enableButtonsIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setScrollViewPaddingForSplitView()V

    return-void
.end method

.method private final updateSplitViewHeightForSplitOver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSavedOrDefaultHeightForSplitOver()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->saveCurrentRatioOfSplitOverViewHeight()V

    return-void

    :cond_1
    const-string p0, "aiViewWindowHandler"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateSplitViewMarginForBottomButtons()V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const-wide/high16 v1, 0x3fc0000000000000L    # 0.125

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v0, v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;

    const-string v3, "summaryCopier"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v2, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;

    const-string v7, "summaryTranslator"

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v5, v8

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;->getCopyButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;->getTranslatorButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method

.method private final updateSplitViewMarginForSummaryIcon()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->updateSummaryIconMargin()V

    return-void
.end method

.method private final updateSplitViewWebPageBlurViewVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string p0, "splitViewWebPageBlurView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateSplitViewWidth()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitViewWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getDefaultWidthForSplitView()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSavedWidthForSplitView()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitViewWidth(I)V

    return-void
.end method

.method private static final updateSplitViewWithBlurLayoutMargin$lambda$23(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private final updateSummaryPanelMarginsForOneUi7OrAboveStyle()V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v1, 0x7f0b02f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v3, 0x7f0b0c0e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v7, 0x7f0b0927

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSummaryPanelHorizontalMarginResultView()I

    move-result v7

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f071423

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07141e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v7

    const-wide v9, 0x3fc70a3d80000000L    # 0.18000000715255737

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    double-to-int v7, v7

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lw6/b;->a(II)Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f071420

    goto :goto_1

    :cond_3
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v10

    :cond_4
    const v9, 0x7f07141f

    :goto_1
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v7, v9, v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v7, v9, v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move v9, v7

    :goto_2
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "popupMenuContainer"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_3

    :cond_6
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v10

    :cond_7
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v10

    :cond_8
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v10

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public closeSplitView(Z)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->closeSplitView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "splitLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setMinimized(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->innerLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const-string p0, "innerLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p0, "aiViewWindowHandler"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isResultViewVisible:Z

    const-string v0, "resultView"

    if-nez p1, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->h(Lw6/r;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->d(Z)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->onKeyboardEventListener:Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->removeEventListener(Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateSplitOverViewStatus(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    :cond_7
    return-void

    :cond_8
    const-string p0, "onKeyboardEventListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final enableMinimizedModeButtons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->actionButtonVisibility:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->enableMinimizedModeActionButtons()V

    return-void
.end method

.method public getDefaultWidthForSplitView()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ed70a3d    # 0.42f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isOneUi7Style()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimumWidth:F

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getSplitOverMaximumHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070087

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "splitView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSplitViewContainer()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSplitViewContainerInitialY()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerInitialY:F

    return p0
.end method

.method public final initViewsForSplitView()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getViews()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07143a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v2, 0x7f0b0c11

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    const v3, 0x7f0b0c1d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;->initViewsForSplitView()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$initViewsForSplitView$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->onKeyboardEventListener:Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLayoutChangedListenersForSplitView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setLandscapeWindowListeners()V

    :cond_1
    return-void

    :cond_2
    const-string p0, "summaryTranslator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initializeTouchPositionValue()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitViewContainerInitialY(F)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverUpdatedHeightForDrag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerUpdatedDy:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    return-void
.end method

.method public final isFloatingPaneModeBottom()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lw6/b;->a(II)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isOnTouchInvokedKeyboardHide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isOnTouchInvokedKeyboardHide:Z

    return p0
.end method

.method public isShowing()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isResultViewVisible:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public onCloseButtonClick()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const-string v3, "resultView"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->getPaneMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getPanelPosition-J5JjPLc(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getScreenID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "20058"

    invoke-static {v4, v5, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->d(Z)V

    return-void

    :cond_1
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->didRemoveObjectCaptureView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->didRemoveVisionTextView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->dismiss(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->closeSplitOverViewWithAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const-string p0, "aiViewAnimator"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_0
    return-void
.end method

.method public onTouchMoveWindowHandler(F)V
    .locals 12

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerUpdatedDy:F

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, p1

    const/4 v4, 0x0

    const-string v5, "aiViewWindowHandler"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "aiViewAnimator"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v7, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragViewsByDy(FJ)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightByDy(F)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    sub-int/2addr v0, v1

    if-le v3, v0, :cond_3

    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_2

    float-to-double v0, p1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-interface {p0, p1, v7, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragViewsByDy(FJ)V

    goto :goto_0

    :cond_2
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    if-eqz p1, :cond_b

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_a

    neg-int v1, v3

    if-ge v1, v2, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightByDy(F)V

    :cond_6
    iput-boolean v10, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, v7, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragViewsByDy(FJ)V

    goto :goto_0

    :cond_7
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11

    :cond_8
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    if-eqz v1, :cond_9

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    neg-float p1, p1

    int-to-float v1, v2

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightByDy(F)V

    goto :goto_0

    :cond_a
    neg-float p1, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeightByDy(F)V

    :cond_b
    :goto_0
    return-void

    :cond_c
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v11
.end method

.method public final openSplitView()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStubV2:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStubV2:Landroid/view/ViewStub;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewStub:Landroid/view/ViewStub;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    const v2, 0x7f0b0bcf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewWithBlurLayoutMargin()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setFloatingPaneView()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b0a00

    goto :goto_3

    :cond_5
    const v2, 0x7f0b0bcb

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_5

    :cond_8
    const-string p0, "splitLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->onKeyboardEventListener:Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->addEventListener(Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->parentView:Landroid/view/View;

    const v2, 0x7f0b0bce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWebPageBlurView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->initResultViewBlurView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->innerLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v3, "getConfiguration(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->makeSplitView(Landroid/content/res/Configuration;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    const v2, 0x7f0b0a01

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_6

    :cond_b
    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/j;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateFloatingMinimizedViewColors()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f0b0c0d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f0b0612

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewMinimizeContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const v2, 0x7f0b0c19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/r;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c
    const-string p0, "summaryTitleView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->bodyContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$openSplitView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager$openSplitView$8;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->showSplitViewWithAnimation()V

    goto :goto_7

    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->showSplitOverViewWithAnimation()V

    :goto_7
    return-void

    :cond_f
    const-string p0, "innerLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_10
    const-string p0, "onKeyboardEventListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public performActionUpAndCancelForSplitView()V
    .locals 9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    const-string v3, "aiViewWindowHandler"

    const/4 v4, 0x0

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->isMinimized()Z

    move-result v2

    const/4 v5, 0x0

    const-string v6, "aiViewAnimator"

    const/4 v7, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerUpdatedDy:F

    float-to-int v2, v2

    iget v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    sub-int/2addr v8, v0

    if-le v2, v8, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setMinimized(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz v0, :cond_0

    int-to-float v1, v1

    invoke-interface {v0, v1, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragRestore(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->enableInfoDetailAndSummaryStyleButtons(Z)V

    goto :goto_1

    :cond_0
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerUpdatedDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerUpdatedDy:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragClose(FZ)V

    goto :goto_0

    :cond_3
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragRestore(FZ)V

    :goto_0
    return-void

    :cond_5
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isSplitOverTranslationOnGoing:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    if-eqz v0, :cond_7

    invoke-interface {v0, v1, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;->animateDragRestore(FZ)V

    goto :goto_1

    :cond_7
    invoke-static {v6}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    if-eqz v0, :cond_c

    invoke-interface {v0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;->setMinimized(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->enableInfoDetailAndSummaryStyleButtons(Z)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    :cond_a
    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->saveCurrentRatioOfSplitOverViewHeight()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->restoreMenuContainer()V

    :cond_b
    return-void

    :cond_c
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public final restoreSplitOverToDefaultHeight()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getDefaultHeightForSplitOver()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitOverHeight(I)V

    return-void
.end method

.method public final restoreTranslationY()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public searchKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyword"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->searchKeywordInCurrentTab(Ljava/lang/String;)V

    return-void
.end method

.method public final setFocusToSummaryTitle()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    const-string p0, "summaryTitleView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnTouchInvokedKeyboardHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->isOnTouchInvokedKeyboardHide:Z

    return-void
.end method

.method public final setSplitOverUpdatedHeightForDrag(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitOverUpdatedHeightForDrag:I

    return-void
.end method

.method public final setSplitView(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitView:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    return-void
.end method

.method public setSplitViewContainerInitialY(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainerInitialY:F

    return-void
.end method

.method public final setSubModules(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "aiViewWindowHandler"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aiViewAnimator"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryTranslator"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryCopier"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewAnimator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewAnimator;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryTranslator:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryTranslator;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->summaryCopier:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/ISummaryCopier;

    return-void
.end method

.method public shouldShowSplitView(Landroid/app/Activity;)Z
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateMainViewSplitSize(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->mAIDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateSplitSize(IZ)V

    return-void
.end method

.method public updateMenuContainerPadding()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->popupMenuContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->translatorLanguageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-interface {v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->getViewHeightWithMargins(Landroid/view/View;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_0
    const-string p0, "popupMenuContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public updateSavedRatioOfSplitOverViewHeight(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->savedRatioOfSplitOverViewHeight:F

    return-void
.end method

.method public updateSplitOverHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMaximumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->contentView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setViewHeight(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v1, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setViewHeight(Landroid/view/View;I)V

    :cond_2
    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->saveCurrentRatioOfSplitOverViewHeight()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSplitOverHeightIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->shouldShowSplitView(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitOverMinimumResizeHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewHeight:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    new-instance v2, LG6/c;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSplitViewContainerInitialY()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setSplitViewContainerInitialY(F)V

    :cond_0
    return-void
.end method

.method public final updateSplitViewLayout(Landroid/content/res/Configuration;Landroid/widget/RelativeLayout$LayoutParams;Z)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RelativeLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerLayoutParams"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->makeSplitView(Landroid/content/res/Configuration;Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->shouldChangeColorsForReaderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->getBackground()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateFloatingMinimizedViewColors()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->aiViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isProgressOngoing()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->showLightEffectAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    const/4 p3, -0x2

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewMarginForBottomButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateSplitViewMarginForSummaryIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->setScrollViewPaddingForSplitView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelBase;->updateNavigationBarColor()V

    return-void
.end method

.method public final updateSplitViewWithBlurLayoutMargin()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewTopMargin()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitViewContainerBottomMargin()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->splitViewWithBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/q;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public updateSummarySearchSuggestionList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->getSplitView()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitView;->updateSummarySearchSuggestionList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final updateViewsForReaderModeTheme()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->portraitWindowHandler:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->landscapeWindowHandler:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->updateFloatingMinimizedViewColors()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->resultView:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryUtil;->getReaderModeBackgroundResource()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->i(ILjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string p0, "resultView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
