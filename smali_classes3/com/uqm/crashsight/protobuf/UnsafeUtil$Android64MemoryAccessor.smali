.class final Lcom/uqm/crashsight/protobuf/UnsafeUtil$Android64MemoryAccessor;
.super Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Android64MemoryAccessor"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(J)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;J)B
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->g(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->h(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public final a(JB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(J[BJJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;JB)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JD)V
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JF)V
    .locals 1

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JZ)V
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(Ljava/lang/Object;JZ)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final a([BJJJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(Ljava/lang/Object;J)Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->i(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->j(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;J)F
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;J)D
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/UnsafeUtil$MemoryAccessor;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method